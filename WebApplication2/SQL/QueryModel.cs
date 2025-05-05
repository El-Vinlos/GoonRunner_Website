using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;

namespace System
{
    public class QueryModel
    {
        private EnforceModel Enforce;
        public QueryModel()
        {
            Enforce = new EnforceModel();
        }
        public QueryModel(String connectionStrings)
        {
            Enforce = new EnforceModel(connectionStrings);
        }
        /* Select Query */
        public DataTable SelectTable(string tableName)  // Select all column on table
        {
            string queryStr = "select * from " + tableName;
            return Enforce.ExecuteSelect(queryStr);
        }
        public DataTable SelectTable(string tableName, string columnName, string value, string dateformatString = null) // Select all column on table with 1 condition
        {
            string queryStr = DateFormatString(dateformatString);
            queryStr += "select * from " + tableName + " where " + columnName + "=@KEY";
            Dictionary<string, object> param = new Dictionary<string, object>();
            param.Add("@KEY", value);
            return Enforce.ExecuteSelect(queryStr, param);
        }

        public DataTable SelectTable2(string tableName, string columnName, string value, string dateformatString = null) // Select all column on table with 1 condition
        {
            string queryStr = DateFormatString(dateformatString);
            queryStr += "select * from " + tableName + " where " + columnName + " LIKE '%"+value+"%'";
            return Enforce.ExecuteSelect2(queryStr);
        }

        public DataTable SelectTable(string tableName, string[] arrayKey, string[] arrayValue, string dateformatString = null) // Select all column on table with multi condition
        {
            string queryStr = DateFormatString(dateformatString);
            queryStr += "select * from " + tableName + " where ";
            string condCollect = "";
            for (int i = 0; i < arrayKey.Length; i++)
                condCollect += arrayKey[i] + "=@" + arrayKey[i] + " AND ";
            queryStr += splitString(condCollect, 0, 4);
            Dictionary<string, object> param = new Dictionary<string, object>();
            for (int i = 0; i < arrayKey.Length; i++)
                param.Add("@" + arrayKey[i], arrayValue[i]);
            return Enforce.ExecuteSelect(queryStr, param);
        }
        public DataTable SelectTable(string tableName, Dictionary<string, object> pKeyValue, string dateformatStrings = null)
        {
            string queryStr = DateFormatString(dateformatStrings);
            queryStr += "select * from " + tableName + " where ";
            // Create queryStrings
            string condCollect = "";
            foreach (KeyValuePair<string, object> value in pKeyValue)
                condCollect += value.Key.Trim().Substring(0, 1).Equals("@") ? splitString(value.Key.Trim(), 1, 1) + "=" + value.Key.Trim() + " AND " : value.Key.Trim() + "=@" + value.Key.Trim() + " AND ";
            queryStr += splitString(condCollect, 0, 4);
            // Create parameters
            Dictionary<string, object> pCondition = new Dictionary<string, object>();
            foreach (KeyValuePair<string, object> value in pKeyValue)
                pCondition.Add(value.Key.Trim().Substring(0, 1).Equals("@") ? value.Key.Trim() : "@" + value.Key.Trim(), value.Value);
            // Execute
            return Enforce.ExecuteSelect(queryStr, pCondition);
        }
        public DataTable SelectTable(string tableName, string[] columnName)  // Select multi column on table
        {
            string colCollect = "";
            foreach (string s in columnName)
                colCollect += s + ", ";
            string queryStr = "select " + splitString(colCollect, 0, 1) + " from " + tableName;
            return Enforce.ExecuteSelect(queryStr);
        }
        /* Delete Query */
        public void DeleteTable(string tableName, string columnName, string value, string dateformatString = null)  // Delete row in table with 1 condition
        {
            string queryStr = DateFormatString(dateformatString);
            queryStr += "delete from " + tableName + " where " + columnName + "=@KEY";
            Dictionary<string, object> param = new Dictionary<string, object>();
            param.Add("@KEY", value);
            Enforce.ExecuteUpdate(queryStr, param);
        }
        public void DeleteTable(string tableName, string[] arrayKey, string[] arrayValue, string dateformatString = null)  // Delete row in table with multi condition
        {
            string queryStr = DateFormatString(dateformatString);
            queryStr += "delete from " + tableName + " where ";
            string condCollect = "";
            for (int i = 0; i < arrayKey.Length; i++)
                condCollect += arrayKey[i] + "=@" + arrayKey[i] + " AND ";
            queryStr += splitString(condCollect, 0, 4);
            Dictionary<string, object> param = new Dictionary<string, object>();
            for (int i = 0; i < arrayKey.Length; i++)
                param.Add("@" + arrayKey[i], arrayValue[i]);
            Enforce.ExecuteUpdate(queryStr, param);
        }
        public void DeleteTable(string tableName, Dictionary<string, object> pKeyValue, string dateformatStrings = null)
        {
            string queryStr = DateFormatString(dateformatStrings);
            queryStr += "delete from " + tableName + " where ";
            // Create queryStrings
            string condCollect = "";
            foreach (KeyValuePair<string, object> value in pKeyValue)
                condCollect += value.Key.Trim().Substring(0,1).Equals("@") ? splitString(value.Key.Trim(), 1, 1) + "=" + value.Key.Trim() + " AND " : value.Key.Trim() + "=@" + value.Key.Trim() + " AND ";
            queryStr += splitString(condCollect, 0, 4);
            // Create parameters
            Dictionary<string, object> pCondition = new Dictionary<string, object>();
            foreach (KeyValuePair<string, object> value in pKeyValue)
                pCondition.Add(value.Key.Trim().Substring(0, 1).Equals("@") ? value.Key.Trim() : "@" + value.Key.Trim(), value.Value);
            // Execute
            Enforce.ExecuteUpdate(queryStr, pCondition);
        }
        /* Insert Query */
        public void InsertTable(string tableName, string[] arrayKey, string[] arrayValue, string dateformatString = null)   // Insert 1 row on table
        {
            // String total
            string queryStr = DateFormatString(dateformatString);
            queryStr += "insert into " + tableName + "(";
            // String of column Name
            string colNameCollect = "";
            for (int i = 0; i < arrayKey.Length; i++)
                colNameCollect += arrayKey[i] + ", ";
            queryStr += splitString(colNameCollect, 0, 1) + ") values(";
            // String of row value
            string colValueCollect = "";
            for (int i = 0; i < arrayKey.Length; i++)
                colValueCollect += "@" + arrayKey[i] + ", ";
            queryStr += splitString(colValueCollect, 0, 1) + ")";
            // add value to parameters
            Dictionary<string, object> param = new Dictionary<string, object>();
            for (int i = 0; i < arrayKey.Length; i++)
                param.Add(arrayKey[i], arrayValue[i]);
            // Execute
            Enforce.ExecuteUpdate(queryStr, param);
        }
        public void InsertTable(string tableName, Dictionary<string, object> pKeyValue, string dateformatString = null)   // Insert 1 row on table
        {
            // Query String Total
            string queryStr = DateFormatString(dateformatString);
            queryStr += "insert into " + tableName + "(";
            // Handle keys string
            string keyCollect = "";
            foreach(KeyValuePair<string, object> value in pKeyValue)
                keyCollect += (value.Key.Substring(0, 1).Equals("@") ? splitString(value.Key, 1, 1) : value.Key) + ", ";
            queryStr += splitString(keyCollect, 0, 1) + ") values(";
            // Handle parameters string
            string paramCollect = "";
            foreach (KeyValuePair<string, object> value in pKeyValue)
                paramCollect += (value.Key.Substring(0, 1).Equals("@") ? value.Key : "@" + value.Key) + ", ";
            queryStr += splitString(paramCollect, 0, 1) + ")";
            // Add parameters
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            foreach (KeyValuePair<string, object> value in pKeyValue)
                parameters.Add(value.Key.Substring(0, 1).Equals("@") ? value.Key : "@" + value.Key, value.Value);
            // Execute
            Enforce.ExecuteUpdate(queryStr, parameters);
        }
        /* Update Query */
        public void UpdateTable(string tableName, string[] arrayKey_Set, string[] arrayValue_Set, string[] arrayKey_Where, string[] arrayValue_Where, string dateformatString = null) // Update row width choose: multi coloumn - multi condition
        {
            // String total
            string queryStr = DateFormatString(dateformatString);
            queryStr += "update " + tableName + " set ";
            // String: set
            string setCollect = "";
            for (int i = 0; i < arrayKey_Set.Length; i++)
                setCollect += arrayKey_Set[i] + "=@" + arrayKey_Set[i] + ", ";
            queryStr += splitString(setCollect, 0, 1) + " where ";
            // String: where
            string condCollect = "";
            for (int i = 0; i < arrayKey_Where.Length; i++)
                condCollect += arrayKey_Where[i] + "=@" + arrayKey_Where[i] + " AND ";
            queryStr += splitString(condCollect, 0, 4);
            // add parameters
            Dictionary<string, object> param = new Dictionary<string, object>();
            for (int i = 0; i < arrayKey_Set.Length; i++)
                param.Add(arrayKey_Set[i], arrayValue_Set[i]);
            for (int i = 0; i < arrayKey_Where.Length; i++)
                param.Add(arrayKey_Where[i], arrayValue_Where[i]);
            // Execute
            Enforce.ExecuteUpdate(queryStr, param);
        }
        public void UpdateTable(string tableName, Dictionary<string, object> pKeyValue, Dictionary<string, object> pConditionValue, string dateformatString = null) // Update row width choose: multi coloumn - multi condition
        {
            // String total
            string queryStr = DateFormatString(dateformatString);
            queryStr += "update " + tableName + " set ";
            // String key - value
            string keyCollect = "";
            foreach (KeyValuePair<string, object> value in pKeyValue)
                keyCollect += (value.Key.Substring(0, 1).Equals("@") ? splitString(value.Key, 1, 1) + "=" + value.Key : value.Key + "=@" + value.Key) + ", ";
            queryStr += splitString(keyCollect, 0, 1) + " where ";
            // String condition - vallue
            string condCollect = "";
            foreach(KeyValuePair<string, object> value in pConditionValue)
                condCollect += (value.Key.Substring(0, 1).Equals("@") ? splitString(value.Key, 1, 1) + "=" + value.Key : value.Key + "=@" + value.Key) + " AND ";
            queryStr += splitString(condCollect, 0, 4);
            // Add parameters
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            foreach (KeyValuePair<string, object> value in pKeyValue)
                parameters.Add(value.Key.Substring(0, 1).Equals("@") ? value.Key : "@" + value.Key, value.Value);
            foreach(KeyValuePair<string, object> value in pConditionValue)
                parameters.Add(value.Key.Substring(0, 1).Equals("@") ? value.Key : "@" + value.Key, value.Value);
            Enforce.ExecuteUpdate(queryStr, parameters);
        }
        /* Handing methods */
        public string splitString(string stringSplit, int numberDelFirst = 0, int numberDelLast = 0)   // split character superfluous
        {
            string ans = stringSplit.Trim();
            ans = ans.Substring(numberDelFirst, ans.Length - numberDelLast);
            return ans;
        }
        public string DateFormatString(string dateformatString)   // return string: set dateformat <format type>
        {
            if (dateformatString != null)
                return "set dateformat " + dateformatString + " ";
            return "";
        }
    }
}
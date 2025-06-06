﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace System
{
    public class ConnectModel
    {
        private String ConnectionStrings;
        private SqlConnection Connection;
        public ConnectModel()
        {
            Connection = new SqlConnection();
        }
        public void Initializing()
        {
            this.ConnectionStrings = "data source=.\\SQLEXPRESS;initial catalog=QLBANLK;integrated security=True;trustservercertificate=True";
            CreateConnection();
        }
        public void Initializing(String connectionStringsName)
        {
            this.ConnectionStrings = ConfigurationManager.ConnectionStrings[connectionStringsName].ConnectionString;
            CreateConnection();
        }
        public Boolean CreateConnection()
        {
            try
            {
                Connection.ConnectionString = ConnectionStrings;
                OpenConnection();
                CloseConnection();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public void OpenConnection()
        {
            if (Connection.State == ConnectionState.Closed)
                Connection.Open();
        }
        public void CloseConnection()
        {
            if (Connection.State == ConnectionState.Open)
                Connection.Close();
        }
        public SqlConnection DatabaseConnection()
        {
            return this.Connection;
        }
    }
}
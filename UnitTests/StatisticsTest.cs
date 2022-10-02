﻿using ClientApp.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Globalization;
using System.IO;
using System.Runtime.Versioning;
using System.Security.Cryptography.X509Certificates;
using ClientApp.Model;
using ClientApp.ViewModel.Pages;
using System.Collections.ObjectModel;

namespace UnitTests
{
    [TestClass]
    public class StatisticsTest
    {
        private const string fileName = "test3.db";

        private readonly ObservableCollection<StatisticsItem> StatisticsItems 
            = new ObservableCollection<StatisticsItem>() {
            new StatisticsItem("Anton", 5000),
            new StatisticsItem("Zhenek", 1500000),
            new StatisticsItem("Dashka", 3000000),
            new StatisticsItem("Margo", 3000000),
            };

        private ObservableCollection<StatisticsItem> ActualStatisticsItems;

        public StatisticsTest()
        {
            ClientApp.Services.DatabaseHandler.CreateDBFile(fileName);

            SQLiteConnection connection = new SQLiteConnection($"Data Source={fileName}; Version=3;");
            ClientApp.Services.DatabaseHandler.RunQueryFromFile(ref connection,
                Directory.GetParent(Environment.CurrentDirectory).Parent.FullName + @"/Resources/test-init.sql");

            ActualStatisticsItems = StatisticsPageViewModel.UpdateStatistics(fileName);
        }

        [TestMethod]
        public void LoadStatisticsTest() => 
            CollectionAssert.AreEqual(StatisticsItems, ActualStatisticsItems, "Collection equaility failed");
    }
}
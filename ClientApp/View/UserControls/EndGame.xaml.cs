﻿using ClientApp.View.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ClientApp.View.UserControls
{
    /// <summary>
    /// Interaction logic for EndGame.xaml
    /// </summary>
    public partial class EndGame : UserControl
    {
        private Frame _frame;

        public EndGame(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
        }

        private void PlayBtn_Click(object sender, RoutedEventArgs e)
        {
            _frame.NavigationService.Navigate(new MenuPage(_frame));
        }

        private void StatisticsBtn_Click(object sender, RoutedEventArgs e)
        {
            _frame.NavigationService.Navigate(new StatisticsPage(_frame));
        }
    }
}
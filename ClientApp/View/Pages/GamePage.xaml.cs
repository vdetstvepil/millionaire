﻿using ClientApp.Model;
using ClientApp.ViewModel.Pages;
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

namespace ClientApp
{
    /// <summary>
    /// Interaction logic for GamePage.xaml
    /// </summary>
    public partial class GamePage : Page
    {
        public GamePage()
        {
            InitializeComponent();

            // Присваиваем ссылку на ViewModel DataContext'у
            DataContext = new GamePageViewModel();
        }

        private void VariantBtn_Click(object sender, RoutedEventArgs e)
        {
            if (((Button)sender).Tag.ToString() == "A")
                ((GamePageViewModel)DataContext).ChooseVariant(VariantLetter.A);
            else if (((Button)sender).Tag.ToString() == "B")
                ((GamePageViewModel)DataContext).ChooseVariant(VariantLetter.B);
            else if (((Button)sender).Tag.ToString() == "C")
                ((GamePageViewModel)DataContext).ChooseVariant(VariantLetter.C);
            else if (((Button)sender).Tag.ToString() == "D")
                ((GamePageViewModel)DataContext).ChooseVariant(VariantLetter.D);
            else throw new Exception("No acceptable variant found");
        }
    }
}

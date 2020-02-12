using System;
using System.Net;
using System.Net.NetworkInformation;
using System.Threading;
using System.Windows;
using System.Windows.Threading;

namespace Pingtest
{
    public partial class MainWindow : Window
    {
        private int testTime = 7;
        public MainWindow()
        {
            InitializeComponent();
            TestButton.Content = "Wysyłaj zapytania PING przez "+ testTime.ToString() +" sek.";
            progressbar1.Maximum = testTime;
        }

        private void TestButton_Click(object sender, RoutedEventArgs e)
        {

            if (textbox1.Text == "")
            {
                display.Items.Add("Podaj Ip adres lub nazwę hosta");
            }
            else
            {
                progressbar1.Value = 0;

                display.Items.Clear();

                display.Items.Add("Odpowiedzi PING :");

                Thread thread = new Thread(StartTest);

                Thread thread1 = new Thread(UpdateProgressBar);

                thread.Start();

                thread1.Start();
            }
            
        }

        public void StartTest()
        {
            DateTime start = DateTime.Now;

            DateTime end = start.AddSeconds(testTime);

            int temp = start.Second;


            int pom = Convert.ToInt16(end.Second);

            while (temp != pom)
            {

                Pinging();

                temp = DateTime.Now.Second;

                TestButton.Dispatcher.Invoke(() => { TestButton.IsEnabled = false; });

                textbox1.Dispatcher.Invoke(() => { textbox1.IsEnabled = false; });
            }

            TestButton.Dispatcher.Invoke(() => { TestButton.IsEnabled = true; });

            textbox1.Dispatcher.Invoke(() => { textbox1.IsEnabled = true; });

            display.Dispatcher.Invoke(() => { display.Items.Add("Koniec testu."); });

        }

        private IPAddress hostaddress;
        public void Pinging()
        {

            Dispatcher.Invoke(() =>
            {

                IPHostEntry host = Dns.GetHostEntry(textbox1.Text);

                foreach (IPAddress address in host.AddressList)
                {

                    hostaddress = address;

                }

                Ping ping = new Ping();

                PingReply reply = ping.Send(textbox1.Text, 5000);

                display.Items.Add("PING status: " + reply.Status + " IP : " + hostaddress.ToString() + " time = " + reply.RoundtripTime + " ms");
            });
        }

        public void UpdateProgressBar()
        {
            for (int i = 0; i <= testTime; i += 1)
            {
                
                progressbar1.Dispatcher.Invoke(() => { progressbar1.Value +=1; });
                Thread.Sleep(1000);
            }

        }

    }
}

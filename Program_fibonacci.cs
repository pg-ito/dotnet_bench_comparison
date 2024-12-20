using System.Collections.Generic;
namespace Bench
{
    class Program{
        static private Dictionary<ulong, ulong> Memo = new Dictionary<ulong, ulong>();
        static void Main(string[] args){
            ulong maxNum = (args.Length < 1)? 10000: UInt64.Parse(args[0]);
            Console.WriteLine($"===== calculate fibonacci sequence for {maxNum} =====");
            Console.WriteLine($"SDK: {Environment.Version.ToString()}");
            ulong result = fibonacci(maxNum);
            Console.WriteLine($"===== fibonacci[{maxNum}]: {result} =====");
        }
        private static ulong fibonacci(ulong n){
            if(n < 2){
                return n;
            }
            if (Memo.ContainsKey(n)){
                return Memo[n];
            }
            Memo.Add(n, fibonacci(n-1)+fibonacci(n-2));
            return Memo[n];
        }
    }
}

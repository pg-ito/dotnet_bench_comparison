namespace Bench
{
    class Program{
        static void Main(string[] args){
            int maxNum = (args.Length < 1)? 10000: Int32.Parse(args[0]);
            Console.WriteLine($"===== scan prime nums for {maxNum} =====");
            Console.WriteLine($"SDK: {Environment.Version.ToString()}");
            int result = 0;
            for(int i = 2;i <= maxNum; i++){
                if(isPrime(i)){
                    // Console.WriteLine($"prime num: {i}");
                    ++result;
                }
            }
            Console.WriteLine($"===== found {result} prime number(s) =====");
        }
        private static bool isPrime(int n){
            for(int p=2;p<n;++p){
                if(n%p==0){
                    return false;
                }
            }
            return true;
        }
    }
}

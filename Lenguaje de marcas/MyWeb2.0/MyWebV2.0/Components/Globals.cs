namespace MyWeb.Components.Globals{

    public static class Globals{
        static Random random = new Random();
        static public long pageUrl = random.NextInt64();
    }
}
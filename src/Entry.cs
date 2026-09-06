using MegaCrit.Sts2.Core.Logging;
using MegaCrit.Sts2.Core.Modding;
using STS2RitsuLib;
using System.Reflection;
using STS2RitsuLib.Interop;


namespace MaggotSpire;

[ModInitializer(nameof(Initialize))]
public static class Entry
{
    public static void Initialize()
    {
        var assembly = Assembly.GetExecutingAssembly();
        RitsuLibFramework.EnsureGodotScriptsRegistered(assembly, Logger);
        ModTypeDiscoveryHub.RegisterModAssembly(ModId, assembly);
        
        Log.Info("[MaggotSpire] Mod initialized successfully.");
    }

    public const string ModId = "MaggotSpire";

    public static readonly Logger Logger =
    RitsuLibFramework.CreateLogger(ModId);
}


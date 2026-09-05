using MegaCrit.Sts2.Core.Logging;
using MegaCrit.Sts2.Core.Modding;

namespace MaggotSpire;

[ModInitializer(nameof(Initialize))]
public static class Entry
{
    public static void Initialize()
    {
        Log.Info("[MaggotSpire] Mod initialized successfully.");
    }
}


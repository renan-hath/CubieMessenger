.class public final Lcom/aviary/android/feather/library/plugins/PluginFactory;
.super Ljava/lang/Object;
.source "PluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;,
        Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;,
        Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;,
        Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;,
        Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;,
        Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;,
        Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherPack;I)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Lcom/aviary/android/feather/library/plugins/FeatherPack;
    .param p2, "type"    # I

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    instance-of v1, p1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    if-eqz v1, :cond_1

    .line 802
    packed-switch p2, :pswitch_data_0

    .line 819
    .end local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 804
    .restart local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :pswitch_1
    new-instance v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    .end local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    check-cast p1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .end local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V

    .line 805
    .restart local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    goto :goto_0

    .line 808
    .restart local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :pswitch_2
    new-instance v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    .end local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    check-cast p1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .end local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V

    .line 809
    .restart local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    goto :goto_0

    .line 812
    .restart local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :pswitch_3
    new-instance v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;

    .end local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    check-cast p1, Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;

    .end local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$EffectPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherInternalPack;)V

    .restart local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    goto :goto_0

    .line 816
    .restart local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    :cond_1
    instance-of v1, p1, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    if-eqz v1, :cond_0

    .line 817
    new-instance v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .end local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    check-cast p1, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    .end local p1    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherPack;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V

    .restart local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

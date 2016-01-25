.class public Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;
.super Ljava/lang/Object;
.source "IAPDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field result:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->result:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .line 84
    return-void
.end method


# virtual methods
.method public build()Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->result:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    return-object v0
.end method

.method public setPlugin(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;
    .locals 1
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->result:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    # setter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-static {v0, p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$002(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 88
    return-object p0
.end method

.method public setPlugin(Ljava/lang/String;I)Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->result:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    # setter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$102(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->result:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    # setter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->type:I
    invoke-static {v0, p2}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$202(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;I)I

    .line 94
    return-object p0
.end method

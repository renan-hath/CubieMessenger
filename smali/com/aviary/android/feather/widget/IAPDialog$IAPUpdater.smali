.class public Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;
.super Ljava/lang/Object;
.source "IAPDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/IAPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAPUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;
    }
.end annotation


# instance fields
.field private packagename:Ljava/lang/String;

.field private plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    return-object v0
.end method

.method static synthetic access$002(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;
    .param p1, "x1"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    return-object p1
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    .line 60
    iget v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->type:I

    return v0
.end method

.method static synthetic access$202(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->type:I

    return p1
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

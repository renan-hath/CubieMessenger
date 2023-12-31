.class public Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;->sSyncAdapter:Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/ContentProviderClient;
    .param p5, "x5"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static/range {p0 .. p5}, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private getSyncAdapter()Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;->sSyncAdapter:Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;->sSyncAdapter:Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 58
    :cond_0
    sget-object v0, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;->sSyncAdapter:Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;

    return-object v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "ret":Landroid/os/IBinder;
    invoke-direct {p0}, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService;->getSyncAdapter()Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/authenticator/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    return-void
.end method

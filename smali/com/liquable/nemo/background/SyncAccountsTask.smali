.class public Lcom/liquable/nemo/background/SyncAccountsTask;
.super Ljava/lang/Object;
.source "SyncAccountsTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = 0x522d1a3f06d3ed17L


# instance fields
.field private final accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/background/SyncAccountsTask;->accounts:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/background/SyncAccountsTask;->accounts:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public runInBackground(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/background/SyncAccountsTask;->accounts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/FriendManager;->syncAccounts()V

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v1, p0, Lcom/liquable/nemo/background/SyncAccountsTask;->accounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->syncAccounts(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

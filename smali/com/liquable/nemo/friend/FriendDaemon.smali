.class public Lcom/liquable/nemo/friend/FriendDaemon;
.super Ljava/lang/Object;
.source "FriendDaemon.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendDaemon;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public findFriendCandidateByUid(Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendService:Lcom/liquable/nemo/client/service/FriendService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/client/service/FriendService;->findFriendCandidateByUid(Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

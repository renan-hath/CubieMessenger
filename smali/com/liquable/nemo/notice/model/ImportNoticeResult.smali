.class public Lcom/liquable/nemo/notice/model/ImportNoticeResult;
.super Ljava/lang/Object;
.source "ImportNoticeResult.java"


# instance fields
.field private final newNotices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/INotice;",
            ">;"
        }
    .end annotation
.end field

.field private final requireUpgradeVersionNotice:Lcom/liquable/nemo/notice/VersionNotice;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/liquable/nemo/notice/VersionNotice;)V
    .locals 0
    .param p2, "requireUpgradeVersionNotice"    # Lcom/liquable/nemo/notice/VersionNotice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/INotice;",
            ">;",
            "Lcom/liquable/nemo/notice/VersionNotice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "newNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/INotice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->newNotices:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->requireUpgradeVersionNotice:Lcom/liquable/nemo/notice/VersionNotice;

    .line 27
    return-void
.end method


# virtual methods
.method public findUpgrade()Lcom/liquable/nemo/notice/VersionNotice;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->requireUpgradeVersionNotice:Lcom/liquable/nemo/notice/VersionNotice;

    return-object v0
.end method

.method public getNewNotices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/INotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->newNotices:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->newNotices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->requireUpgradeVersionNotice:Lcom/liquable/nemo/notice/VersionNotice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/liquable/nemo/notice/model/NoticeManager$1;
.super Ljava/lang/Object;
.source "NoticeManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/notice/model/NoticeManager;->findVersionUpgrade(Ljava/util/List;)Lcom/liquable/nemo/notice/VersionNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/liquable/nemo/notice/VersionNotice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/notice/model/NoticeManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/notice/model/NoticeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/notice/model/NoticeManager;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/liquable/nemo/notice/model/NoticeManager$1;->this$0:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/notice/VersionNotice;Lcom/liquable/nemo/notice/VersionNotice;)I
    .locals 2
    .param p1, "lhs"    # Lcom/liquable/nemo/notice/VersionNotice;
    .param p2, "rhs"    # Lcom/liquable/nemo/notice/VersionNotice;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/VersionNotice;->resolveNemoVersion()Lcom/liquable/nemo/NemoVersion;

    move-result-object v0

    invoke-virtual {p2}, Lcom/liquable/nemo/notice/VersionNotice;->resolveNemoVersion()Lcom/liquable/nemo/NemoVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/NemoVersion;->compareTo(Lcom/liquable/nemo/NemoVersion;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 66
    check-cast p1, Lcom/liquable/nemo/notice/VersionNotice;

    check-cast p2, Lcom/liquable/nemo/notice/VersionNotice;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/notice/model/NoticeManager$1;->compare(Lcom/liquable/nemo/notice/VersionNotice;Lcom/liquable/nemo/notice/VersionNotice;)I

    move-result v0

    return v0
.end method

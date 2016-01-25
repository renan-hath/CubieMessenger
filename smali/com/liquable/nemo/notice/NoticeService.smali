.class public Lcom/liquable/nemo/notice/NoticeService;
.super Ljava/lang/Object;
.source "NoticeService.java"

# interfaces
.implements Lcom/liquable/nemo/notice/INoticeService;


# instance fields
.field private final homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V
    .locals 0
    .param p1, "homeServerClient"    # Lcom/liquable/nemo/client/home/HomeServerClient;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeService;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    .line 15
    return-void
.end method


# virtual methods
.method public findSystemNoticeById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/BaseSystemNotice;
    .locals 2
    .param p1, "systemNoticeId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeService;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    invoke-virtual {v1, p1, p2}, Lcom/liquable/nemo/client/home/HomeServerClient;->findSystemNoticeDtoById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/ISystemNoticeDto;

    move-result-object v0

    .line 22
    .local v0, "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    if-nez v0, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 26
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->createFromDto(Lcom/liquable/nemo/notice/ISystemNoticeDto;)Lcom/liquable/nemo/notice/BaseSystemNotice;

    move-result-object v1

    goto :goto_0
.end method

.method public listSystemNotices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseSystemNotice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v3, p0, Lcom/liquable/nemo/notice/NoticeService;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/client/home/HomeServerClient;->listSystemNoticeDtos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 32
    .local v2, "systemNoticeDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ISystemNoticeDto;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v1, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseSystemNotice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/ISystemNoticeDto;

    .line 34
    .local v0, "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-static {v0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->createFromDto(Lcom/liquable/nemo/notice/ISystemNoticeDto;)Lcom/liquable/nemo/notice/BaseSystemNotice;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v0    # "noticeDto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :cond_0
    return-object v1
.end method

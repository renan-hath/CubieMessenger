.class public interface abstract Lcom/liquable/nemo/notice/INoticeService;
.super Ljava/lang/Object;
.source "INoticeService.java"


# virtual methods
.method public abstract findSystemNoticeById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/BaseSystemNotice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation
.end method

.method public abstract listSystemNotices(Ljava/lang/String;)Ljava/util/List;
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
.end method

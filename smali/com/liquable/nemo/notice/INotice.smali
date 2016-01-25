.class public interface abstract Lcom/liquable/nemo/notice/INotice;
.super Ljava/lang/Object;
.source "INotice.java"


# virtual methods
.method public abstract getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getNoticeTime()Ljava/util/Date;
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isRead()Z
.end method

.method public abstract isType(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/notice/INotice;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onNoticeClick(Landroid/content/Context;)V
.end method

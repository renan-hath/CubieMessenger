.class public interface abstract Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWidgetOpenCloseListener"
.end annotation


# virtual methods
.method public abstract onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
.end method

.method public abstract onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
.end method

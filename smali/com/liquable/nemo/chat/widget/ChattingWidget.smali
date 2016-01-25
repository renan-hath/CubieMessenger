.class public abstract Lcom/liquable/nemo/chat/widget/ChattingWidget;
.super Landroid/widget/FrameLayout;
.source "ChattingWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    }
.end annotation


# instance fields
.field protected visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onClose()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/widget/ChattingWidget;->visible:Z

    .line 33
    return-void
.end method

.method public isTogglable()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/ChattingWidget;->visible:Z

    return v0
.end method

.method protected abstract onClose()V
.end method

.method protected onOpen(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->updateSecretMode(Z)V

    .line 47
    return-void
.end method

.method public onResume(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->updateSecretMode(Z)V

    .line 51
    return-void
.end method

.method public final open(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/widget/ChattingWidget;->visible:Z

    .line 56
    return-void
.end method

.method public final toggle(Z)Z
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/ChattingWidget;->visible:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->close()V

    .line 64
    :goto_0
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/ChattingWidget;->visible:Z

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->open(Z)V

    goto :goto_0
.end method

.method public updateSecretMode(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 68
    return-void
.end method

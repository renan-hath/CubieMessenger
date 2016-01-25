.class final Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;
.super Ljava/lang/Object;
.source "InputMessageWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/InputMessageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputTextWatcher"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private lastTypingStatusTime:J

.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->lastTypingStatusTime:J

    .line 46
    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Landroid/content/Context;Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "spannable"    # Landroid/text/Editable;

    .prologue
    .line 51
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isPressEnterToSend()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$000(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->isImageMode:Z
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$200(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 67
    :goto_1
    return-void

    .line 56
    .restart local v0    # "content":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # invokes: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->sendMessage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$100(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$000(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;F)V

    .line 65
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->topic:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$300(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-static {p1, v1, v2}, Lcom/liquable/nemo/message/view/MessageViews;->setNicknameHighlight(Landroid/text/Spannable;Ljava/lang/String;Lcom/liquable/nemo/friend/model/FriendManager;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 75
    return-void
.end method

.method public clearStatus()V
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->lastTypingStatusTime:J

    .line 79
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 87
    if-lez p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->lastTypingStatusTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->lastTypingStatusTime:J

    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onTypeListener:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$400(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_0
    return-void
.end method

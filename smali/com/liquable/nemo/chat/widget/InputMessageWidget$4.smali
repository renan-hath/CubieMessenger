.class Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;
.super Ljava/lang/Object;
.source "InputMessageWidget.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/InputMessageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private firstTimeUseSecretAndInPortraitMode(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->isPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 200
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowSecretMessageLockTips()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->firstTimeUseSecretAndInPortraitMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->hideKeyboard()V

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$800(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;->onSecretModeChanged(Z)V

    .line 226
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$700(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$700(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->hide()V

    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$702(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView;

    goto :goto_0
.end method

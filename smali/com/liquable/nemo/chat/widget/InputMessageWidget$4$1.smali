.class Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;
.super Ljava/lang/Object;
.source "InputMessageWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;->this$1:Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 210
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowSecretMessageLockTips(Z)V

    .line 211
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->secret:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V

    .line 212
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;->this$1:Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;

    iget-object v1, v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    const v2, 0x7f03016f

    const v3, 0x7f080309

    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;->this$1:Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v2, v3, v0, v4}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;F)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    # setter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$702(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView;

    .line 216
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4$1;->this$1:Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$700(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->setEndButtonAlignParentLeftRight(I)V

    .line 217
    return-void
.end method

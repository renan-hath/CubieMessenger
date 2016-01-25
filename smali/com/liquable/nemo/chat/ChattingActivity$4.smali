.class Lcom/liquable/nemo/chat/ChattingActivity$4;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChattingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$4;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 418
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 421
    :cond_0
    instance-of v1, v0, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v1, :cond_2

    .line 422
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnLocationSettingBtn()V

    .line 426
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$4;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->onMessageLongClick(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    goto :goto_0

    .line 423
    :cond_2
    instance-of v1, v0, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v1, :cond_1

    .line 424
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnPaintSettingBtn()V

    goto :goto_1
.end method

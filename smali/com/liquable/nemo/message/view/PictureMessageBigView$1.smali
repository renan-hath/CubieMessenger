.class Lcom/liquable/nemo/message/view/PictureMessageBigView$1;
.super Ljava/lang/Object;
.source "PictureMessageBigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/PictureMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/PictureMessageBigView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/PictureMessageBigView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/PictureMessageBigView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;->button:Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->sendLikePictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;)V

    .line 40
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendLikePictureMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageBigView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->playAnimation()V

    .line 42
    return-void
.end method

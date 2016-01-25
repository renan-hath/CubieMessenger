.class Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;
.super Ljava/lang/Object;
.source "OpenApiAppMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->update(Lcom/liquable/nemo/message/model/OpenApiAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/OpenApiAppMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/OpenApiAppMessageView;Lcom/liquable/nemo/message/model/OpenApiAppMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;->this$0:Lcom/liquable/nemo/message/view/OpenApiAppMessageView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;->val$message:Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->button:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;->val$message:Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    .line 182
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getButtonUrlForAndroid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;->val$message:Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    .line 183
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getButtonGooglePlayUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$1;->val$message:Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    .line 184
    invoke-virtual {v4}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 180
    # invokes: Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->openAppOrGoogePlay(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->access$000(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

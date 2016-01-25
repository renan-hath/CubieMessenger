.class Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "OpenApiAppMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/view/OpenApiAppMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkSpan"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final executeUrl:Ljava/lang/String;

.field private final googlePlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "executeUrl"    # Ljava/lang/String;
    .param p2, "googlePlayUrl"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;->executeUrl:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;->googlePlayUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;->appName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->link:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;->executeUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;->googlePlayUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/message/view/OpenApiAppMessageView$LinkSpan;->appName:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->openAppOrGoogePlay(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/OpenApiAppMessageView;->access$000(Landroid/content/Context;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

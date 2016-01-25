.class Lcom/liquable/nemo/IntroActivity$4;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/IntroActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/IntroActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/liquable/nemo/IntroActivity$4;->this$0:Lcom/liquable/nemo/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "skip"

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liquable/nemo/IntroActivity$4;->this$0:Lcom/liquable/nemo/IntroActivity;

    # getter for: Lcom/liquable/nemo/IntroActivity;->startTime:J
    invoke-static {v4}, Lcom/liquable/nemo/IntroActivity;->access$1300(Lcom/liquable/nemo/IntroActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 167
    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->leaveIntroduction(Ljava/lang/String;J)V

    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/IntroActivity$4;->this$0:Lcom/liquable/nemo/IntroActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/IntroActivity;->finish()V

    .line 170
    return-void
.end method

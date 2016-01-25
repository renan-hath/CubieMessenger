.class Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$5;
.super Ljava/lang/Object;
.source "SelectMyAccountIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$5;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->selectMyAccountIconSkip()V

    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$5;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # invokes: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->finishAndGoToMain()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$400(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    .line 172
    return-void
.end method

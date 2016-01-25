.class Lcom/liquable/nemo/regist/AlternativeRegistrationActivity$1;
.super Ljava/lang/Object;
.source "AlternativeRegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity$1;->this$0:Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    const-string/jumbo v2, "facebook"

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginPhoneVerification(Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity$1;->this$0:Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;

    const-class v2, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity$1;->this$0:Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

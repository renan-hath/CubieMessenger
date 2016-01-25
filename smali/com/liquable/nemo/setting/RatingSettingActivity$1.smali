.class Lcom/liquable/nemo/setting/RatingSettingActivity$1;
.super Ljava/lang/Object;
.source "RatingSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/RatingSettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/RatingSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/RatingSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/RatingSettingActivity;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/liquable/nemo/setting/RatingSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/RatingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/setting/RatingSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/RatingSettingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/setting/RatingSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/RatingSettingActivity;

    const-string/jumbo v2, "utm_source%3Dandroid%26utm_medium%3Drating%26utm_campaign%3Drating"

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/ExternalIntents;->createGooglePlayIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/RatingSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    const/4 v0, 0x0

    return v0
.end method

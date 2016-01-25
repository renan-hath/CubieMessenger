.class Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;
.super Ljava/lang/Object;
.source "CreateProfileWithFacebookActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

.field final synthetic val$i18nKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;->val$i18nKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    iget-object v1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$7;->val$i18nKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.class Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$5;
.super Ljava/lang/Object;
.source "CreateProfileWithFacebookActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showAsyncErrorToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$5;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$5;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 213
    return-void
.end method

.class Lcom/aviary/android/feather/FeatherActivity$8;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->createAboutDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$8;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 812
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "http://www.aviary.com/android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 814
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity$8;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/FeatherActivity;->startActivity(Landroid/content/Intent;)V

    .line 815
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 816
    return-void
.end method

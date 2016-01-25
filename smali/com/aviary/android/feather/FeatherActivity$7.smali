.class Lcom/aviary/android/feather/FeatherActivity$7;
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
    .line 800
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$7;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 805
    return-void
.end method

.class Lcom/aviary/android/feather/FeatherActivity$5;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$5;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 764
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 765
    return-void
.end method

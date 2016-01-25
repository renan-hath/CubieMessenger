.class Lcom/liquable/nemo/regist/InputPincodeActivity$5;
.super Ljava/lang/Object;
.source "InputPincodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPincodeActivity;->onNotLoggedResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

.field final synthetic val$inputPincodeScrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPincodeActivity;Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$5;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$5;->val$inputPincodeScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$5;->val$inputPincodeScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 278
    return-void
.end method

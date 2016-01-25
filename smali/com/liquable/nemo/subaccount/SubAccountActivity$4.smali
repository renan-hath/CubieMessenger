.class Lcom/liquable/nemo/subaccount/SubAccountActivity$4;
.super Ljava/lang/Object;
.source "SubAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/subaccount/SubAccountActivity;->startCountDown(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

.field final synthetic val$totalSeconds:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    iput p2, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;->val$totalSeconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    # getter for: Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainSeconds:I
    invoke-static {v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$300(Lcom/liquable/nemo/subaccount/SubAccountActivity;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 183
    .local v0, "nextRemainSeconds":I
    if-gtz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    # invokes: Lcom/liquable/nemo/subaccount/SubAccountActivity;->generatePincode()V
    invoke-static {v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->access$400(Lcom/liquable/nemo/subaccount/SubAccountActivity;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    iget v2, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;->val$totalSeconds:I

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->startCountDown(II)V

    goto :goto_0
.end method

.class Lcom/liquable/nemo/chat/ChattingActivity$42;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$42;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$42;->val$msgResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$42;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$42;->val$msgResId:I

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 2368
    return-void
.end method

.class Lcom/liquable/nemo/chat/YoutubePickerActivity$2;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

.field final synthetic val$mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;->val$mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;->val$mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    # setter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->preMode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1102(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 381
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$2;->val$mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    # invokes: Lcom/liquable/nemo/chat/YoutubePickerActivity;->setMode(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1200(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V

    .line 382
    return-void
.end method

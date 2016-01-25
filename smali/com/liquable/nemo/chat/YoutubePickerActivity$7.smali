.class Lcom/liquable/nemo/chat/YoutubePickerActivity$7;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$7;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 469
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$7;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->isSearchViewExpanded:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1500(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$7;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$7;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$300(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionWithSearchKey(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1800(Lcom/liquable/nemo/chat/YoutubePickerActivity;Ljava/lang/String;)V

    .line 472
    :cond_0
    return-void
.end method

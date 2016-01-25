.class Lcom/liquable/nemo/chat/YoutubePickerActivity$5;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


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
    .line 429
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # setter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->isSearchViewExpanded:Z
    invoke-static {v0, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1502(Lcom/liquable/nemo/chat/YoutubePickerActivity;Z)Z

    .line 433
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1600(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 434
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->preMode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1100(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->HOME:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    :goto_0
    # invokes: Lcom/liquable/nemo/chat/YoutubePickerActivity;->setMode(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V
    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1200(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)V

    .line 435
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->preMode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1100(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 440
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$5;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # setter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->isSearchViewExpanded:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1502(Lcom/liquable/nemo/chat/YoutubePickerActivity;Z)Z

    .line 441
    return v1
.end method

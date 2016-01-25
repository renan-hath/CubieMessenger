.class Lcom/liquable/nemo/chat/YoutubePickerActivity$6;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;


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
    .line 448
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 451
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1700(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1700(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 455
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1600(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$6;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;
    invoke-static {v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1700(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

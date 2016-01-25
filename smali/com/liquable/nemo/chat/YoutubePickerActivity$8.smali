.class Lcom/liquable/nemo/chat/YoutubePickerActivity$8;
.super Landroid/os/AsyncTask;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;->querySuggestionWithSearchKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    :try_start_0
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSuggestions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->apiClient:Lcom/liquable/nemo/youtube/YoutubeApiClient;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$400(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/youtube/YoutubeApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getSuggestions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/client/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 515
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 527
    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v7, v6

    const-string/jumbo v0, "text"

    aput-object v0, v7, v3

    .line 529
    .local v7, "columnNames":[Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    # setter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1702(Lcom/liquable/nemo/chat/YoutubePickerActivity;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;

    .line 530
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    const/16 v0, 0xa

    if-ge v8, v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1700(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/database/MatrixCursor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 531
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 536
    .end local v8    # "i":I
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v0, "text"

    aput-object v0, v4, v6

    .line 537
    .local v4, "from":[Ljava/lang/String;
    new-array v5, v3, [I

    const v0, 0x7f0802b7

    aput v0, v5, v6

    .line 538
    .local v5, "to":[I
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1600(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v9

    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    const v2, 0x7f030120

    iget-object v3, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .line 540
    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->suggestionCursor:Landroid/database/MatrixCursor;
    invoke-static {v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1700(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 538
    invoke-virtual {v9, v0}, Lcom/actionbarsherlock/widget/SearchView;->setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V

    .line 545
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$8;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchVideosView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1600(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 548
    :cond_1
    return-void
.end method

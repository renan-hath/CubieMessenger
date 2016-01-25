.class Lcom/liquable/nemo/widget/SearchBarWidget$2;
.super Ljava/lang/Object;
.source "SearchBarWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/SearchBarWidget;->init(ILcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

.field final synthetic val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/SearchBarWidget;Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/SearchBarWidget;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    iput-object p2, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->hintText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$100(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$000(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->stopSearchBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$200(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$000(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$2;->val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 80
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 73
    goto :goto_0

    :cond_2
    move v2, v1

    .line 75
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 92
    return-void
.end method

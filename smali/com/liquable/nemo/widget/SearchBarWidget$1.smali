.class Lcom/liquable/nemo/widget/SearchBarWidget$1;
.super Ljava/lang/Object;
.source "SearchBarWidget.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$1;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    iput-object p2, p0, Lcom/liquable/nemo/widget/SearchBarWidget$1;->val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$1;->val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$1;->val$onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    iget-object v1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$1;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$000(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget$1;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->hideKeyboard()V

    .line 67
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

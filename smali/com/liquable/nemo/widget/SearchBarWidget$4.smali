.class Lcom/liquable/nemo/widget/SearchBarWidget$4;
.super Ljava/lang/Object;
.source "SearchBarWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/SearchBarWidget;->requestEditTextFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/SearchBarWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/SearchBarWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/SearchBarWidget;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$4;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$4;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/liquable/nemo/widget/SearchBarWidget$4;->this$0:Lcom/liquable/nemo/widget/SearchBarWidget;

    # getter for: Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->access$000(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 112
    return-void
.end method

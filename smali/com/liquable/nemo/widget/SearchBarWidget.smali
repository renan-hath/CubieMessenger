.class public Lcom/liquable/nemo/widget/SearchBarWidget;
.super Landroid/widget/LinearLayout;
.source "SearchBarWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/SearchBarWidget$OnAfterTextChangedListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final hintText:Landroid/widget/TextView;

.field private onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

.field private final searchEditText:Landroid/widget/EditText;

.field private final stopSearchBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->context:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03015e

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f08033e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->stopSearchBtn:Landroid/widget/ImageButton;

    .line 43
    const v2, 0x7f08033d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    .line 44
    const v2, 0x7f08033c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->hintText:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/SearchBarWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/SearchBarWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->hintText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/widget/SearchBarWidget;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/SearchBarWidget;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->stopSearchBtn:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 51
    return-void
.end method

.method public hideKeyboard()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 55
    return-void
.end method

.method public init(ILcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "onQueryTextListener"    # Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iput-object p2, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/liquable/nemo/widget/SearchBarWidget$1;

    invoke-direct {v1, p0, p2}, Lcom/liquable/nemo/widget/SearchBarWidget$1;-><init>(Lcom/liquable/nemo/widget/SearchBarWidget;Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/liquable/nemo/widget/SearchBarWidget$2;

    invoke-direct {v1, p0, p2}, Lcom/liquable/nemo/widget/SearchBarWidget$2;-><init>(Lcom/liquable/nemo/widget/SearchBarWidget;Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->stopSearchBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/liquable/nemo/widget/SearchBarWidget$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/widget/SearchBarWidget$3;-><init>(Lcom/liquable/nemo/widget/SearchBarWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public requestEditTextFocus()V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/liquable/nemo/widget/SearchBarWidget$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/widget/SearchBarWidget$4;-><init>(Lcom/liquable/nemo/widget/SearchBarWidget;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 118
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->clearFocus()V

    .line 123
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->hideKeyboard()V

    .line 124
    return-void
.end method

.method public submitQueryText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->onQueryTextListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    iget-object v1, p0, Lcom/liquable/nemo/widget/SearchBarWidget;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->hideKeyboard()V

    .line 133
    :cond_0
    return-void
.end method

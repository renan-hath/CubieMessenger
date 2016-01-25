.class public Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "CustomAlertDialogBuilder.java"


# instance fields
.field private final dialogContentLayout:Landroid/widget/LinearLayout;

.field private final dialogView:Landroid/view/View;

.field private message:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private final titleDivider:Landroid/view/View;

.field private final titleLayout:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v1, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->title:Landroid/widget/TextView;

    .line 19
    iput-object v1, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->message:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f03004c

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->titleLayout:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->title:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->titleDivider:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->message:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogContentLayout:Landroid/widget/LinearLayout;

    .line 33
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0e009a

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 15
    .local v0, "ctw":Landroid/view/ContextThemeWrapper;
    new-instance v1, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;

    invoke-direct {v1, v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->setMessage(I)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->message:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 48
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->message:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 40
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->setTitle(I)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->titleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->titleDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->titleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->titleDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->dialogView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 71
    return-object p0
.end method

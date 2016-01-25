.class public Lcom/liquable/nemo/chat/widget/InputMessageWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "InputMessageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;,
        Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;,
        Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;
    }
.end annotation


# static fields
.field public static conflictingWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final editTextMaxLength:I

.field private final inputEditText:Landroid/widget/EditText;

.field private final inputEditTextHolder:Landroid/view/View;

.field private final inputMessageLayout:Landroid/widget/RelativeLayout;

.field private final inputTextWatcher:Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;

.field private isImageMode:Z

.field private final lock:Landroid/widget/CheckBox;

.field private onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

.field private onSendButtonClickedListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

.field private onTypeListener:Ljava/lang/Runnable;

.field private paintBtn:Landroid/view/View;

.field protected rootView:Landroid/view/View;

.field private final sendMessageBtn:Landroid/widget/ImageButton;

.field private showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;

.field private topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    .line 140
    sget-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->conflictingWidgets:Ljava/util/List;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v5, Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    .line 132
    new-instance v5, Lcom/liquable/nemo/chat/widget/InputMessageWidget$2;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$2;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onTypeListener:Ljava/lang/Runnable;

    .line 150
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/liquable/nemo/R$styleable;->InputMessageWidget:[I

    invoke-virtual {v5, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "customTypes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 153
    .local v1, "hasSecret":Z
    const/16 v5, 0x1388

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->editTextMaxLength:I

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    iput-boolean v8, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->visible:Z

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 158
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030141

    invoke-virtual {v3, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    .line 159
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v7, 0x7f080303

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputMessageLayout:Landroid/widget/RelativeLayout;

    .line 160
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v7, 0x7f080308

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->sendMessageBtn:Landroid/widget/ImageButton;

    .line 161
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 163
    new-instance v5, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;

    const/4 v7, 0x0

    invoke-direct {v5, p0, p1, v7}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Landroid/content/Context;Lcom/liquable/nemo/chat/widget/InputMessageWidget$1;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputTextWatcher:Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;

    .line 165
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v7, 0x7f08030b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditTextHolder:Landroid/view/View;

    .line 166
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v7, 0x7f08030a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    .line 168
    new-array v2, v8, [Landroid/text/InputFilter;

    .line 169
    .local v2, "inputFilters":[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v7, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->editTextMaxLength:I

    invoke-direct {v5, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v6

    .line 170
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 176
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    .line 177
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 176
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 178
    .local v4, "shorterWidth":I
    const/16 v5, 0x140

    if-le v4, v5, :cond_0

    .line 179
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 182
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputTextWatcher:Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->sendMessageBtn:Landroid/widget/ImageButton;

    new-instance v7, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;

    invoke-direct {v7, p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v7, 0x7f080309

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->lock:Landroid/widget/CheckBox;

    .line 197
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->lock:Landroid/widget/CheckBox;

    new-instance v7, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;

    invoke-direct {v7, p0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$4;-><init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->lock:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 229
    return-void

    .line 228
    :cond_1
    const/16 v5, 0x8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->isImageMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->topic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onTypeListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSendButtonClickedListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    .param p1, "x1"    # Lcom/liquable/nemo/widget/ShowcaseView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->showCaseView:Lcom/liquable/nemo/widget/ShowcaseView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    return-object v0
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputTextWatcher:Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$InputTextWatcher;->clearStatus()V

    .line 300
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSendButtonClickedListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;->sendWithSecretText(Ljava/lang/String;)V

    .line 306
    :goto_0
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->isImageMode:Z

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSendButtonClickedListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;->sendWithText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 237
    return-void
.end method

.method public inputEmoji(Ljava/lang/String;)V
    .locals 8
    .param p1, "emojiCode"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0d00e5

    const/4 v6, 0x0

    .line 240
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 241
    .local v0, "chatStringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 242
    .local v3, "selectionStart":I
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    sub-int v2, v4, v5

    .line 243
    .local v2, "selectedLength":I
    invoke-static {p1}, Lcom/liquable/nemo/chat/EmojiUtil;->toInputText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "emojiWithInputBrace":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 245
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->editTextMaxLength:I

    if-le v4, v5, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 247
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    .line 265
    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v5

    .line 262
    invoke-static {v4, v0, p1, v5, v3}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;Ljava/lang/String;FI)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->editTextMaxLength:I

    if-le v4, v5, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    .line 259
    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    .line 258
    invoke-virtual {v0, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->lock:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isTogglable()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setVisibility(I)V

    .line 281
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->hideKeyboard()V

    .line 282
    return-void
.end method

.method protected onOpen(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setVisibility(I)V

    .line 288
    return-void
.end method

.method public reply(Ljava/lang/String;)V
    .locals 4
    .param p1, "friendName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 293
    .local v0, "chatStringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 294
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->replyInChattingActivity()V

    .line 296
    .end local v0    # "chatStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_0
    return-void
.end method

.method public setIsImageMode(Z)V
    .locals 2
    .param p1, "isImageMode"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->isImageMode:Z

    .line 314
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->lock:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const v0, 0x7f020246

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 316
    return-void

    .line 314
    :cond_0
    const v0, 0x7f020245

    goto :goto_0
.end method

.method public setIsSecret(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 319
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->lock:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 324
    return-void
.end method

.method public setOnEmojiButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v2, 0x7f080305

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "selectEmojiBtn":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method public setOnEnterChatGroupButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v2, 0x7f080304

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "enterChatGroupBtn":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method public setOnFilterButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v2, 0x7f080306

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "filterBtn":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void
.end method

.method public setOnPaintButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->rootView:Landroid/view/View;

    const v1, 0x7f080307

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->paintBtn:Landroid/view/View;

    .line 346
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->paintBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->paintBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method

.method public setOnSecretModeListener(Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;)V
    .locals 0
    .param p1, "onSecretModeListener"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSecretModeListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;

    .line 352
    return-void
.end method

.method public setOnSendButtonClickedListener(Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;)V
    .locals 0
    .param p1, "onSendButtonClickedListener"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSendButtonClickedListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

    .line 356
    return-void
.end method

.method public setOnTypeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onTypeListener:Ljava/lang/Runnable;

    .line 362
    :cond_0
    return-void
.end method

.method public setPaintEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->paintBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    return-void
.end method

.method public setSendEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->sendMessageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 370
    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->topic:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setUnfinishedMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "unfinishedMessage"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 381
    :cond_0
    return-void
.end method

.method public updateSecretMode(Z)V
    .locals 1
    .param p1, "isSecret"    # Z

    .prologue
    .line 385
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditTextHolder:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 386
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 387
    return-void
.end method

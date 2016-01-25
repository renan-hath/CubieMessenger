.class public Lcom/liquable/nemo/MainActivity;
.super Lcom/liquable/nemo/BaseFragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;,
        Lcom/liquable/nemo/MainActivity$TabType;
    }
.end annotation


# static fields
.field public static final FROM:Ljava/lang/String; = "FROM"

.field private static final MORE_THAN_TEN_UNREAD_MESSAGES:Ljava/lang/String; = "10+"

.field private static final TAB_LAYOUTS_FOR_NON_SUPPORTED_COUNTRIES:[I

.field private static final TAB_LAYOUTS_FOR_SUPPORTED_COUNTRIES:[I

.field private static final TAB_TYPES_FOR_NON_SUPPORTED_COUNTRIES:[Lcom/liquable/nemo/MainActivity$TabType;

.field private static final TAB_TYPES_FOR_SUPPORTED_COUNTRIES:[Lcom/liquable/nemo/MainActivity$TabType;


# instance fields
.field private chatGroupTotalUnreadCount:J

.field private chatGroupUnreadCountView:Landroid/widget/TextView;

.field private forumUnreadCountView:Landroid/widget/TextView;

.field private isReceiverRegistered:Z

.field private noticeUnreadCount:J

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field final receiver:Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;

.field private final tabIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/MainActivity$TabType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabLayouts:[I

.field private final tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

.field private tabs:[Lcom/liquable/nemo/MainActivity$TabType;

.field private unacceptInvitationCountTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/liquable/nemo/MainActivity;->TAB_LAYOUTS_FOR_SUPPORTED_COUNTRIES:[I

    .line 72
    new-array v0, v1, [Lcom/liquable/nemo/MainActivity$TabType;

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->FORUM:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/liquable/nemo/MainActivity$TabType;->RECOMMEND_FORUM:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/MainActivity;->TAB_TYPES_FOR_SUPPORTED_COUNTRIES:[Lcom/liquable/nemo/MainActivity$TabType;

    .line 74
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/liquable/nemo/MainActivity;->TAB_LAYOUTS_FOR_NON_SUPPORTED_COUNTRIES:[I

    .line 76
    new-array v0, v3, [Lcom/liquable/nemo/MainActivity$TabType;

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/MainActivity;->TAB_TYPES_FOR_NON_SUPPORTED_COUNTRIES:[Lcom/liquable/nemo/MainActivity$TabType;

    return-void

    .line 69
    :array_0
    .array-data 4
        0x7f030149
        0x7f030147
        0x7f030148
        0x7f03014a
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x7f030149
        0x7f030147
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragmentActivity;-><init>()V

    .line 131
    new-instance v0, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;-><init>(Lcom/liquable/nemo/MainActivity;Lcom/liquable/nemo/MainActivity$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/MainActivity;->receiver:Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/MainActivity;->isReceiverRegistered:Z

    .line 142
    new-instance v0, Lcom/liquable/nemo/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/MainActivity$1;-><init>(Lcom/liquable/nemo/MainActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/MainActivity;->tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    .line 160
    new-instance v0, Lcom/liquable/nemo/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/MainActivity$2;-><init>(Lcom/liquable/nemo/MainActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/MainActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/MainActivity;->tabIndexMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->reloadChatGroupTotalUnreadCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->increaseChatGroupTotalUnreadCount()V

    return-void
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/MainActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/liquable/nemo/MainActivity;->noticeUnreadCount:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->applyNoticeTotalUnreadCountView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->unacceptInvitationCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->reloadNoticeTotalUnreadCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->reloadUnacceptInvitationCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/liquable/nemo/MainActivity;->reloadForumTabHasUnreadCount(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/MainActivity;)[Lcom/liquable/nemo/MainActivity$TabType;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    return-object v0
.end method

.method static synthetic access$802(Lcom/liquable/nemo/MainActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->applyChatGroupTotalUnreadCountView()V

    return-void
.end method

.method private addTab(ILcom/liquable/nemo/MainActivity$TabType;Z)V
    .locals 6
    .param p1, "layout"    # I
    .param p2, "tabType"    # Lcom/liquable/nemo/MainActivity$TabType;
    .param p3, "isSelected"    # Z

    .prologue
    const/4 v5, -0x1

    .line 184
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, "tabView":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 188
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 191
    .local v1, "tab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 192
    iget-object v3, p0, Lcom/liquable/nemo/MainActivity;->tabListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 193
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/liquable/nemo/MainActivity;->getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I

    move-result v4

    invoke-virtual {v3, v1, v4, p3}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V

    .line 194
    return-void
.end method

.method private applyChatGroupTotalUnreadCountView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-wide v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-wide v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    const-string/jumbo v1, "10+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private applyNoticeTotalUnreadCountView()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/widget/HomeDrawable;

    iget-wide v2, p0, Lcom/liquable/nemo/MainActivity;->noticeUnreadCount:J

    invoke-direct {v1, p0, v2, v3}, Lcom/liquable/nemo/widget/HomeDrawable;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 211
    return-void
.end method

.method private clearCacheAndGoTo(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method private getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I
    .locals 1
    .param p1, "type"    # Lcom/liquable/nemo/MainActivity$TabType;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->tabIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->tabIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private goToNoticeView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 227
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToNoticeView()V

    .line 230
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    new-instance v4, Lcom/liquable/nemo/background/ListSystemNoticesTask;

    invoke-direct {v4}, Lcom/liquable/nemo/background/ListSystemNoticesTask;-><init>()V

    .line 231
    invoke-virtual {v4}, Lcom/liquable/nemo/background/ListSystemNoticesTask;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/background/Scheduler;->getScheduleTaskLastRunTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 232
    .local v1, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 233
    new-instance v3, Lcom/liquable/nemo/MainActivity$3;

    invoke-direct {v3, p0, p0, v7}, Lcom/liquable/nemo/MainActivity$3;-><init>(Lcom/liquable/nemo/MainActivity;Landroid/content/Context;Z)V

    new-array v4, v7, [Ljava/lang/Void;

    .line 264
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/MainActivity$3;->execute([Ljava/lang/Object;)V

    .line 267
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/ShowNoticeActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method private increaseChatGroupTotalUnreadCount()V
    .locals 4

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J

    .line 278
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->applyChatGroupTotalUnreadCountView()V

    .line 279
    return-void
.end method

.method private initTab()V
    .locals 5

    .prologue
    .line 282
    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    .line 284
    .local v1, "selectedTab":Lcom/liquable/nemo/MainActivity$TabType;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getVisibleChatGroupCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 285
    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    .line 288
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->tabLayouts:[I

    aget v3, v2, v0

    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    aget-object v4, v2, v0

    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    aget-object v2, v2, v0

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v3, v4, v2}, Lcom/liquable/nemo/MainActivity;->addTab(ILcom/liquable/nemo/MainActivity$TabType;Z)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 292
    :cond_2
    const v2, 0x7f080313

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/MainActivity;->unacceptInvitationCountTextView:Landroid/widget/TextView;

    .line 293
    const v2, 0x7f080310

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/MainActivity;->chatGroupUnreadCountView:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f080312

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/MainActivity;->forumUnreadCountView:Landroid/widget/TextView;

    .line 296
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/liquable/nemo/MainActivity;->getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 297
    return-void
.end method

.method private registReceivers()V
    .locals 2

    .prologue
    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/MainActivity;->isReceiverRegistered:Z

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v1, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->receiver:Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    return-void
.end method

.method private reloadChatGroupTotalUnreadCount()V
    .locals 2

    .prologue
    .line 500
    new-instance v0, Lcom/liquable/nemo/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/MainActivity$5;-><init>(Lcom/liquable/nemo/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 511
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/MainActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 513
    return-void
.end method

.method private reloadForumTabHasUnreadCount(Z)V
    .locals 2
    .param p1, "hasUnreadCount"    # Z

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->forumUnreadCountView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->forumUnreadCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private reloadNoticeTotalUnreadCount()V
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/liquable/nemo/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/MainActivity$6;-><init>(Lcom/liquable/nemo/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 536
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/MainActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 537
    return-void
.end method

.method private reloadUnacceptInvitationCount()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->unacceptInvitationCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 543
    :cond_0
    new-instance v0, Lcom/liquable/nemo/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/MainActivity$7;-><init>(Lcom/liquable/nemo/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 558
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/MainActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private unregistReceivers()V
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/liquable/nemo/MainActivity;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->receiver:Lcom/liquable/nemo/MainActivity$DataChangeBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/MainActivity;->isReceiverRegistered:Z

    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->unregistReceivers()V

    .line 302
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onDestroy()V

    .line 303
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 309
    if-nez p2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->TAKE_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 313
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/MainActivity;->getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 320
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/util/ImageLoader;->setLoadProgressly(Z)V

    .line 325
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    sget-object v1, Lcom/liquable/nemo/MainActivity;->TAB_TYPES_FOR_SUPPORTED_COUNTRIES:[Lcom/liquable/nemo/MainActivity$TabType;

    iput-object v1, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    .line 327
    sget-object v1, Lcom/liquable/nemo/MainActivity;->TAB_LAYOUTS_FOR_SUPPORTED_COUNTRIES:[I

    iput-object v1, p0, Lcom/liquable/nemo/MainActivity;->tabLayouts:[I

    .line 333
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->tabIndexMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/liquable/nemo/MainActivity;->TAB_TYPES_FOR_NON_SUPPORTED_COUNTRIES:[Lcom/liquable/nemo/MainActivity$TabType;

    iput-object v1, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    .line 330
    sget-object v1, Lcom/liquable/nemo/MainActivity;->TAB_LAYOUTS_FOR_NON_SUPPORTED_COUNTRIES:[I

    iput-object v1, p0, Lcom/liquable/nemo/MainActivity;->tabLayouts:[I

    goto :goto_0

    .line 337
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 338
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/widget/HomeDrawable;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/widget/HomeDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const v1, 0x7f030037

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/MainActivity;->setContentView(I)V

    .line 344
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isMainActivityEntered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->firstTimeEnteringMainActivity()V

    .line 346
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/util/Pref;->setMainActivityEntered(Z)V

    .line 349
    :cond_2
    const v1, 0x7f0800e8

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 350
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;

    array-length v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 351
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/liquable/nemo/MainActivity$4;

    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/MainActivity$4;-><init>(Lcom/liquable/nemo/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 383
    iget-object v1, p0, Lcom/liquable/nemo/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/liquable/nemo/MainActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 385
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->initTab()V

    .line 387
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->registReceivers()V

    .line 390
    return-void
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 396
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 398
    const/4 v1, 0x1

    return v1
.end method

.method protected onLoggedInResume()V
    .locals 4

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "CHAT_GROUP_TOPIC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "topic":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 412
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 413
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "SHOW_CHATGROUP_LIST"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    const-string/jumbo v2, "SHOW_CHATGROUP_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/MainActivity$TabType;->CHATGROUP_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    invoke-direct {p0, v3}, Lcom/liquable/nemo/MainActivity;->getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 426
    :cond_1
    :goto_0
    new-instance v2, Lcom/liquable/nemo/background/SyncAccountsTask;

    invoke-direct {v2}, Lcom/liquable/nemo/background/SyncAccountsTask;-><init>()V

    invoke-static {p0, v2}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 429
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->reloadChatGroupTotalUnreadCount()V

    .line 431
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->reloadNoticeTotalUnreadCount()V

    .line 433
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->reloadUnacceptInvitationCount()V

    .line 436
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isCubieHeadAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    invoke-static {p0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->start(Landroid/content/Context;)V

    .line 441
    :cond_2
    return-void

    .line 417
    :cond_3
    const-string/jumbo v2, "FRIEND_INVITATION_NOTIFICATION"

    const-string/jumbo v3, "FROM"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    invoke-direct {p0, v3}, Lcom/liquable/nemo/MainActivity;->getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 420
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager;->cancelFriendInviteNotification()V

    goto :goto_0

    .line 421
    :cond_4
    const-string/jumbo v2, "COMFIRM_FRIEND_NOTIFICATION"

    const-string/jumbo v3, "FROM"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/liquable/nemo/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/MainActivity$TabType;->FRIEND_LIST:Lcom/liquable/nemo/MainActivity$TabType;

    invoke-direct {p0, v3}, Lcom/liquable/nemo/MainActivity;->getIndexByTabType(Lcom/liquable/nemo/MainActivity$TabType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 423
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager;->cancelConfirmFriendNotification()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 451
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 466
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 453
    :sswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/MainActivity;->goToNoticeView()V

    .line 468
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 456
    :sswitch_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->main:Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V

    .line 457
    const-class v0, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/MainActivity;->clearCacheAndGoTo(Ljava/lang/Class;)V

    goto :goto_1

    .line 460
    :sswitch_2
    const-class v0, Lcom/liquable/nemo/setting/SettingActivity;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/MainActivity;->clearCacheAndGoTo(Ljava/lang/Class;)V

    goto :goto_1

    .line 463
    :sswitch_3
    const-class v0, Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/MainActivity;->clearCacheAndGoTo(Ljava/lang/Class;)V

    goto :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080375 -> :sswitch_1
        0x7f080376 -> :sswitch_2
        0x7f080377 -> :sswitch_3
    .end sparse-switch
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onTrimMemory(I)V

    .line 474
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    goto :goto_0

    .line 478
    :cond_2
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const-wide v1, 0x3fd3333333333333L    # 0.3

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    goto :goto_0
.end method

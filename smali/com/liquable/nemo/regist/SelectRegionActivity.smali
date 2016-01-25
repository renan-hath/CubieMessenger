.class public Lcom/liquable/nemo/regist/SelectRegionActivity;
.super Landroid/app/Activity;
.source "SelectRegionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/SelectRegionActivity;Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/SelectRegionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/SelectRegionActivity;->createSimpleAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method private createSimpleAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p1, "regionDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x2

    .line 25
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03010a

    new-array v4, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "countryCode"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "countryName"

    aput-object v2, v4, v1

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0802a3
        0x7f0802a5
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/SelectRegionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 37
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/regist/SelectRegionActivity;->requestWindowFeature(I)Z

    .line 38
    const v4, 0x7f030041

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/regist/SelectRegionActivity;->setContentView(I)V

    .line 40
    const v4, 0x7f080101

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/regist/SelectRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 41
    .local v1, "regionsListView":Landroid/widget/ListView;
    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getDataList()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "regionDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, v0}, Lcom/liquable/nemo/regist/SelectRegionActivity;->createSimpleAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v3

    .line 44
    .local v3, "simpleAdapter":Landroid/widget/SimpleAdapter;
    const v4, 0x7f080100

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/regist/SelectRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 46
    .local v2, "searchRegionCodeEditText":Landroid/widget/EditText;
    new-instance v4, Lcom/liquable/nemo/regist/SelectRegionActivity$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/liquable/nemo/regist/SelectRegionActivity$1;-><init>(Lcom/liquable/nemo/regist/SelectRegionActivity;Landroid/widget/ListView;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    new-instance v4, Lcom/liquable/nemo/regist/SelectRegionActivity$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/regist/SelectRegionActivity$2;-><init>(Lcom/liquable/nemo/regist/SelectRegionActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    return-void
.end method

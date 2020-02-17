class PaddingConsts
{
    // Considered bad case: 2 cards next to each other.
    // Considered worst case: card and raised button next to each other.
    // Ignored worst case: 2 raised buttons next to each other.
    static const double MAX_INHERENT_PADDING = (18.0 + 11.0) / 3.0;

    static const double INHERENT_BUTTON_PADDING_HORIZONTAL = 0.0;
    static const double INHERENT_BUTTON_PADDING_VERTICAL = 18.0 / 3.0;
    static const double INHERENT_CARD_PADDING_HORIZONTAL = 11.0 / 3.0;
    static const double INHERENT_CARD_PADDING_VERTICAL = 11.0 / 3.0;
    static const double INHERENT_CUPERTINO_BUTTON_PADDING_HORIZONTAL = 0.0;
    static const double INHERENT_CUPERTINO_BUTTON_PADDING_VERTICAL = 0.0;

    static const double GLOBAL_BASE_PADDING = 0.0;
    static const double GLOBAL_NORMAL_PADDING = GLOBAL_BASE_PADDING + MAX_INHERENT_PADDING;
}

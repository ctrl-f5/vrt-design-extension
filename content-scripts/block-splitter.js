$(() => {
    $('#main-content .vrtnws-sb-container > div > section:first-of-type > ul')
        .each((key, block) => {
            let list = $(block).find('ul:first-of-type');
            if ($(list).find('> li').length > 2) {
                $(block).find('ul:first-of-type').next('div').remove();
                let copy = $(block).clone();
                copy.addClass('big-block-clone');
                copy.insertAfter(block);
                $(list).find('> li:not(:first-child)').remove();
                $(copy).find('ul:first-of-type > li:first-child').remove();
            }
        })
});
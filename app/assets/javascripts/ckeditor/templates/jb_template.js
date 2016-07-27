/**
 * Created by xuanyang on 6/24/16.
 */
//加入template
CKEDITOR.addTemplates(
  'jb_custom',
  {
    //圖片資料夾路徑，放在同目錄的images資料夾內
    imagesPath: CKEDITOR.getUrl('templates/images/'),
    templates: [
      {
        //標題
        title: '套裝格式',
        image: 'sizing.png',//圖片
        description: '套裝格式', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>085號</td><td>095號</td><td>105號</td><td>115號</td><td>125號</td></tr><tr><td class='th'>適穿建議</td><td>80/12.5</td><td>95/14.5</td><td>105/16</td><td>115/18.5</td><td>125/22</td></tr><tr class='pure-table-odd'><td class='th'>肩寬</td><td>21</td><td>23.5</td><td>25.5</td><td>26.5</td><td>29</td></tr><tr><td class='th'>胸寬</td><td>25.5</td><td>30.5</td><td>32</td><td>33.5</td><td>33.5</td></tr><tr class='pure-table-odd'><td class='th'>衣長</td><td>30</td><td>35.5</td><td>39</td><td>42.5</td><td>45</td></tr><tr><td class='th'>袖長</td><td>8.5</td><td>9.5</td><td>10.5</td><td>11.5</td><td>12</td></tr><tr class='pure-table-odd'><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr><tr><td class='th'>腰寬</td><td>20</td><td>21</td><td>21.5</td><td>22</td><td>23</td></tr><tr class='pure-table-odd'><td class='th'>臀圍</td><td>29</td><td>31</td><td>33</td><td>34</td><td>36</td></tr><tr><td class='th'>褲長/裙長</td><td>27</td><td>31</td><td>33</td><td>34</td><td>36</td></tr><tr class='pure-table-odd'><td class='th'>褲襠</td><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td></tr><tr><td class='th'>鬆緊帶</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸2個碼',
        image: 'sizing.png',//圖片
        description: '尺寸2個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>080號</td><td>090號</td><td>100號</td></tr><tr><td class='th'>適穿建議</td><td>80/10</td><td>90/13</td><td>100/15</td></tr><tr class='pure-table-odd'><td class='th'>肩寬</td><td>19</td><td>20</td><td>〇</td></tr><tr><td class='th'>胸寬</td><td>25</td><td>27</td><td>〇</td></tr><tr class='pure-table-odd'><td class='th'>衣長</td><td>43.5</td><td>46.5</td><td>〇</td></tr><tr><td class='th'>袖長</td><td>〇</td><td>〇</td><td>〇</td></tr><tr class='pure-table-odd'><td class='th'>胸至襠</td><td>36</td><td>37.5</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸3個碼',
        image: 'sizing.png',//圖片
        description: '尺寸3個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>080號</td><td>090號</td><td>100號</td></tr><tr><td class='th'>適穿建議</td><td>80/10</td><td>90/13</td><td>100/15</td></tr><tr class='pure-table-odd'><td class='th'>腰寬</td><td>18</td><td>19</td><td>19.5</td></tr><tr><td class='th'>臀圍</td><td>26</td><td>28.5</td><td>32</td></tr><tr class='pure-table-odd'><td class='th'>褲長/群長</td><td>21.5</td><td>23</td><td>25</td></tr><tr><td class='th'>褲襠</td><td>19</td><td>19.5</td><td>21</td></tr><tr class='pure-table-odd'><td class='th'>鬆緊帶</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸4個碼',
        image: 'sizing.png',//圖片
        description: '尺寸4個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>080號</td><td>090號</td><td>100號</td><td>110號</td></tr><tr><td class='th'>適穿建議</td><td>80/10</td><td>90/13</td><td>100/15</td><td>110/17</td></tr><tr class='pure-table-odd'><td class='th'>肩寬</td><td>23</td><td>23.5</td><td>25</td><td>27</td> </tr><tr><td class='th'>胸寬</td><td>26.5</td><td>28.5</td><td>30</td><td>32.5</td></tr><tr class='pure-table-odd'><td class='th'>衣長</td><td>32</td><td>36</td><td>38</td><td>41</td></tr><tr><td class='th'>袖長</td><td>9.5</td><td>10.5</td><td>11</td><td>12.5</td></tr><tr class='pure-table-odd'><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸5個碼',
        image: 'sizing.png',//圖片
        description: '尺寸5個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>085號</td><td>095號</td><td>105號</td><td>115號</td><td>125號</td></tr><tr><td class='th'>適穿建議</td><td>80/12.5</td><td>95/14.5</td><td>105/16</td><td>115/18.5</td><td>125/22</td></tr><tr class='pure-table-odd'><td class='th'>肩寬</td><td>21</td><td>23.5</td><td>25.5</td><td>26.5</td><td>29</td></tr><tr><td class='th'>胸寬</td><td>25.5</td><td>30.5</td><td>32</td><td>33.5</td><td>33.5</td></tr><tr class='pure-table-odd'><td class='th'>衣長</td><td>30</td><td>35.5</td><td>39</td><td>42.5</td><td>45</td></tr><tr><td class='th'>袖長</td><td>8.5</td><td>9.5</td><td>10.5</td><td>11.5</td><td>12</td></tr><tr class='pure-table-odd'><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸6個碼',
        image: 'sizing.png',//圖片
        description: '尺寸6個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>120號</td><td>130號</td><td>140號</td><td>150號</td><td>160號</td><td>165號</td></tr><tr><td class='th'>適穿建議</td><td>120/30</td><td>130/35</td><td>140/40</td><td>150/45</td><td>160/50</td><td>165/53</td></tr><tr class='pure-table-odd'><td class='th'>腰寬</td><td>23.5</td><td>27</td><td>27.5</td><td>29</td><td>29.5</td><td>30</td></tr><tr><td class='th'>臀圍</td><td>39</td><td>40</td><td>42</td><td>43.5</td><td>45</td><td>46</td></tr><tr class='pure-table-odd'><td class='th'>褲長/裙長</td><td>26.5</td><td>28.5</td><td>29.5</td><td>30.5</td><td>31.5</td><td>33</td></tr><tr><td class='th'>褲襠</td><td>22</td><td>24</td><td>25</td><td>26</td><td>26.5</td><td>27</td></tr><tr class='pure-table-odd'><td class='th'>鬆緊帶</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸12個碼',
        image: 'sizing.png',//圖片
        description: '尺寸12個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='7'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>02號</td><td>03號</td><td>04號</td><td>05號</td><td>06號</td><td>07號</td></tr><tr><td class='th'>肩寬</td><td>〇</td><td>〇</td><td>〇</td><td>25</td><td>〇</td><td>26</td></tr><tr class='pure-table-odd'><td class='th'>胸寬</td><td>〇</td><td>〇</td><td>〇</td><td>28</td><td>〇</td><td>28</td></tr><tr><td class='th'>衣長</td><td>〇</td><td>〇</td><td>〇</td><td>36</td><td>〇</td><td>37.5</td></tr><tr class='pure-table-odd'><td class='th'>袖長</td><td>〇</td><td>〇</td><td>〇</td><td>28</td><td>〇</td><td>29.5</td></tr><tr ><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>09號</td><td>11號</td><td>13號</td><td>15號</td><td>17號</td><td>19號</td></tr><tr><td class='th'>肩寬</td><td>28</td><td>29</td><td>30</td><td>31</td><td>32</td><td>34</td></tr><tr class='pure-table-odd'><td class='th'>胸寬</td><td>30</td><td>31</td><td>32</td><td>33</td><td>34</td><td>36</td></tr><tr><td class='th'>衣長</td><td>39</td><td>42</td><td>44</td><td>47</td><td>49</td><td>52</td></tr><tr class='pure-table-odd'><td class='th'>袖長</td><td>32</td><td>34</td><td>37</td><td>40</td><td>42</td><td>44</td></tr><tr ><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      },
      {
        //標題
        title: '尺寸14個碼',
        image: 'sizing.png',//圖片
        description: '尺寸14個碼', //樣板描述
        //自訂樣板內容
        html: "<table class='pure-table'><thead><tr><th colspan='8'><p>商品尺寸(單位：公分)</p><p>※ 適穿建議為平均數值，購買前請先詳看頁面丈量</p></th></tr></thead><tbody><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>02號</td><td>03號</td><td>04號</td><td>05號</td><td>06號</td><td>07號</td><td>09號</td></tr><tr><td class='th'>肩寬</td><td>21</td><td>22</td><td>24</td><td>25</td><td>25</td><td>26</td><td>28</td></tr><tr class='pure-table-odd'><td class='th'>胸寬</td><td>25</td><td>26</td><td>27</td><td>28</td><td>28</td><td>28.5</td><td>30</td></tr><tr><td class='th'>衣長</td><td>32</td><td>33</td><td>34</td><td>36</td><td>37</td><td>37.5</td><td>39</td></tr><tr class='pure-table-odd'><td class='th'>袖長</td><td>25</td><td>26</td><td>27</td><td>28</td><td>29</td><td>29.5</td><td>32</td></tr><tr ><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr><tr class='pure-table-odd'><td width='15%' class='th'>尺寸</td><td>11號</td><td>13號</td><td>15號</td><td>17號</td><td>19號</td><td>21號</td><td>23號</td></tr><tr><td class='th'>肩寬</td><td>29</td><td>30</td><td>31</td><td>32</td><td>34</td><td>36</td><td>38</td></tr><tr class='pure-table-odd'><td class='th'>胸寬</td><td>31</td><td>32</td><td>33</td><td>34</td><td>36</td><td>37</td><td>38</td></tr><tr><td class='th'>衣長</td><td>42</td><td>44</td><td>47</td><td>49</td><td>52</td><td>53</td><td>57</td></tr><tr class='pure-table-odd'><td class='th'>袖長</td><td>32</td><td>34</td><td>37</td><td>40</td><td>42</td><td>44</td></tr><tr ><td class='th'>肩+袖</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td><td>〇</td></tr></tbody></table>"
      }
    ]
  });


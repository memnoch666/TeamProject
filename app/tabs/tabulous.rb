Tabulous.setup do

  tabs do

    scenario_tab do
      text          { 'Scenario' }
      link_path     { introduction_scenario_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('scenario').of_controller('introduction') }
    end

    starting_tab do
      text          { 'Getting Started' }
      link_path     { introduction_starting_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('starting').of_controller('introduction') }
    end
      
    information_tab do
      text          { 'Usefull Information' }
      link_path     { introduction_information_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('information').of_controller('introduction') }
    end

    resources_tab do
      text          { 'Learning Resources' }
      link_path     { introduction_resources_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('resources').of_controller('introduction') }
    end


  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, or :bootstrap_pill
    # or create your own renderer class and reference it here
    renderer :bootstrap

    # whether to allow the active tab to be clicked
    # defaults to true
    active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

end
